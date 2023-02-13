{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_memory_fd

module Vulkan.Types.Struct.VkMemoryGetFdInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkExternalMemoryHandleTypeFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkMemoryGetFdInfoKHR" #-} VkMemoryGetFdInfoKHR =
       VkMemoryGetFdInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , memory :: VkDeviceMemory
         , handleType :: VkExternalMemoryHandleTypeFlagBits
         }

instance Storable VkMemoryGetFdInfoKHR where
  sizeOf    _ = #{size      VkMemoryGetFdInfoKHR}
  alignment _ = #{alignment VkMemoryGetFdInfoKHR}

  peek ptr = 
    VkMemoryGetFdInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"memory" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"handleType" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"memory" ptr val
    pokeField @"handleType" ptr val

instance Offset "sType" VkMemoryGetFdInfoKHR where
  rawOffset = #{offset VkMemoryGetFdInfoKHR, sType}

instance Offset "pNext" VkMemoryGetFdInfoKHR where
  rawOffset = #{offset VkMemoryGetFdInfoKHR, pNext}

instance Offset "memory" VkMemoryGetFdInfoKHR where
  rawOffset = #{offset VkMemoryGetFdInfoKHR, memory}

instance Offset "handleType" VkMemoryGetFdInfoKHR where
  rawOffset = #{offset VkMemoryGetFdInfoKHR, handleType}

#else

module Vulkan.Types.Struct.VkMemoryGetFdInfoKHR where

#endif