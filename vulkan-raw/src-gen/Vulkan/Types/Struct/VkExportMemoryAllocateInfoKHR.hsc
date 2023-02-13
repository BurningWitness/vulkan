{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_memory

module Vulkan.Types.Struct.VkExportMemoryAllocateInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkExternalMemoryHandleTypeFlags
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkExportMemoryAllocateInfoKHR" #-} VkExportMemoryAllocateInfoKHR =
       VkExportMemoryAllocateInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , handleTypes :: VkExternalMemoryHandleTypeFlags
         }

instance Storable VkExportMemoryAllocateInfoKHR where
  sizeOf    _ = #{size      VkExportMemoryAllocateInfoKHR}
  alignment _ = #{alignment VkExportMemoryAllocateInfoKHR}

  peek ptr = 
    VkExportMemoryAllocateInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"handleTypes" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"handleTypes" ptr val

instance Offset "sType" VkExportMemoryAllocateInfoKHR where
  rawOffset = #{offset VkExportMemoryAllocateInfoKHR, sType}

instance Offset "pNext" VkExportMemoryAllocateInfoKHR where
  rawOffset = #{offset VkExportMemoryAllocateInfoKHR, pNext}

instance Offset "handleTypes" VkExportMemoryAllocateInfoKHR where
  rawOffset = #{offset VkExportMemoryAllocateInfoKHR, handleTypes}

#else

module Vulkan.Types.Struct.VkExportMemoryAllocateInfoKHR where

#endif