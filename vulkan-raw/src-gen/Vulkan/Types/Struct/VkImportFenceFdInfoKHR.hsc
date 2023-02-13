{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_fence_fd

module Vulkan.Types.Struct.VkImportFenceFdInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkExternalFenceHandleTypeFlagBits
import Vulkan.Types.Enum.VkFenceImportFlags
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkImportFenceFdInfoKHR" #-} VkImportFenceFdInfoKHR =
       VkImportFenceFdInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , fence :: VkFence
         , flags :: VkFenceImportFlags
         , handleType :: VkExternalFenceHandleTypeFlagBits
         , fd :: #{type int}
         }

instance Storable VkImportFenceFdInfoKHR where
  sizeOf    _ = #{size      VkImportFenceFdInfoKHR}
  alignment _ = #{alignment VkImportFenceFdInfoKHR}

  peek ptr = 
    VkImportFenceFdInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"fence" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"handleType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"fd" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"fence" ptr val
    pokeField @"flags" ptr val
    pokeField @"handleType" ptr val
    pokeField @"fd" ptr val

instance Offset "sType" VkImportFenceFdInfoKHR where
  rawOffset = #{offset VkImportFenceFdInfoKHR, sType}

instance Offset "pNext" VkImportFenceFdInfoKHR where
  rawOffset = #{offset VkImportFenceFdInfoKHR, pNext}

instance Offset "fence" VkImportFenceFdInfoKHR where
  rawOffset = #{offset VkImportFenceFdInfoKHR, fence}

instance Offset "flags" VkImportFenceFdInfoKHR where
  rawOffset = #{offset VkImportFenceFdInfoKHR, flags}

instance Offset "handleType" VkImportFenceFdInfoKHR where
  rawOffset = #{offset VkImportFenceFdInfoKHR, handleType}

instance Offset "fd" VkImportFenceFdInfoKHR where
  rawOffset = #{offset VkImportFenceFdInfoKHR, fd}

#else

module Vulkan.Types.Struct.VkImportFenceFdInfoKHR where

#endif