{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_device_group

module Vulkan.Types.Struct.VkMemoryAllocateFlagsInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkMemoryAllocateFlags
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkMemoryAllocateFlagsInfoKHR" #-} VkMemoryAllocateFlagsInfoKHR =
       VkMemoryAllocateFlagsInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkMemoryAllocateFlags
         , deviceMask :: #{type uint32_t}
         }

instance Storable VkMemoryAllocateFlagsInfoKHR where
  sizeOf    _ = #{size      VkMemoryAllocateFlagsInfoKHR}
  alignment _ = #{alignment VkMemoryAllocateFlagsInfoKHR}

  peek ptr = 
    VkMemoryAllocateFlagsInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"deviceMask" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"deviceMask" ptr val

instance Offset "sType" VkMemoryAllocateFlagsInfoKHR where
  rawOffset = #{offset VkMemoryAllocateFlagsInfoKHR, sType}

instance Offset "pNext" VkMemoryAllocateFlagsInfoKHR where
  rawOffset = #{offset VkMemoryAllocateFlagsInfoKHR, pNext}

instance Offset "flags" VkMemoryAllocateFlagsInfoKHR where
  rawOffset = #{offset VkMemoryAllocateFlagsInfoKHR, flags}

instance Offset "deviceMask" VkMemoryAllocateFlagsInfoKHR where
  rawOffset = #{offset VkMemoryAllocateFlagsInfoKHR, deviceMask}

#else

module Vulkan.Types.Struct.VkMemoryAllocateFlagsInfoKHR where

#endif