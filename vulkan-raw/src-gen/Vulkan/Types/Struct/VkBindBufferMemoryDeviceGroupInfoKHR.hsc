{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_device_group && VK_KHR_bind_memory2

module Vulkan.Types.Struct.VkBindBufferMemoryDeviceGroupInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkBindBufferMemoryDeviceGroupInfoKHR" #-} VkBindBufferMemoryDeviceGroupInfoKHR =
       VkBindBufferMemoryDeviceGroupInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , deviceIndexCount :: #{type uint32_t}
         , pDeviceIndices :: Ptr #{type uint32_t}
         }

instance Storable VkBindBufferMemoryDeviceGroupInfoKHR where
  sizeOf    _ = #{size      VkBindBufferMemoryDeviceGroupInfoKHR}
  alignment _ = #{alignment VkBindBufferMemoryDeviceGroupInfoKHR}

  peek ptr = 
    VkBindBufferMemoryDeviceGroupInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"deviceIndexCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pDeviceIndices" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"deviceIndexCount" ptr val
    pokeField @"pDeviceIndices" ptr val

instance Offset "sType" VkBindBufferMemoryDeviceGroupInfoKHR where
  rawOffset = #{offset VkBindBufferMemoryDeviceGroupInfoKHR, sType}

instance Offset "pNext" VkBindBufferMemoryDeviceGroupInfoKHR where
  rawOffset = #{offset VkBindBufferMemoryDeviceGroupInfoKHR, pNext}

instance Offset "deviceIndexCount" VkBindBufferMemoryDeviceGroupInfoKHR where
  rawOffset = #{offset VkBindBufferMemoryDeviceGroupInfoKHR, deviceIndexCount}

instance Offset "pDeviceIndices" VkBindBufferMemoryDeviceGroupInfoKHR where
  rawOffset = #{offset VkBindBufferMemoryDeviceGroupInfoKHR, pDeviceIndices}

#else

module Vulkan.Types.Struct.VkBindBufferMemoryDeviceGroupInfoKHR where

#endif