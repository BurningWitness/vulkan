{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_memory_fd

module Vulkan.Types.Struct.VkImportMemoryFdInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkExternalMemoryHandleTypeFlagBits
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkImportMemoryFdInfoKHR" #-} VkImportMemoryFdInfoKHR =
       VkImportMemoryFdInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , handleType :: VkExternalMemoryHandleTypeFlagBits
         , fd :: #{type int}
         }

instance Storable VkImportMemoryFdInfoKHR where
  sizeOf    _ = #{size      VkImportMemoryFdInfoKHR}
  alignment _ = #{alignment VkImportMemoryFdInfoKHR}

  peek ptr = 
    VkImportMemoryFdInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"handleType" ptr)
       <*> peek (offset @"fd" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"handleType" ptr val
    pokeField @"fd" ptr val

instance Offset "sType" VkImportMemoryFdInfoKHR where
  rawOffset = #{offset VkImportMemoryFdInfoKHR, sType}

instance Offset "pNext" VkImportMemoryFdInfoKHR where
  rawOffset = #{offset VkImportMemoryFdInfoKHR, pNext}

instance Offset "handleType" VkImportMemoryFdInfoKHR where
  rawOffset = #{offset VkImportMemoryFdInfoKHR, handleType}

instance Offset "fd" VkImportMemoryFdInfoKHR where
  rawOffset = #{offset VkImportMemoryFdInfoKHR, fd}

#else

module Vulkan.Types.Struct.VkImportMemoryFdInfoKHR where

#endif