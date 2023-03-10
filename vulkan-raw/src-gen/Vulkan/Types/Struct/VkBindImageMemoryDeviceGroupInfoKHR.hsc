{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_device_group && VK_KHR_bind_memory2

module Vulkan.Types.Struct.VkBindImageMemoryDeviceGroupInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkRect2D



data {-# CTYPE "vulkan/vulkan.h" "VkBindImageMemoryDeviceGroupInfoKHR" #-} VkBindImageMemoryDeviceGroupInfoKHR =
       VkBindImageMemoryDeviceGroupInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , deviceIndexCount :: #{type uint32_t}
         , pDeviceIndices :: Ptr #{type uint32_t}
         , splitInstanceBindRegionCount :: #{type uint32_t}
         , pSplitInstanceBindRegions :: Ptr VkRect2D
         }

instance Storable VkBindImageMemoryDeviceGroupInfoKHR where
  sizeOf    _ = #{size      VkBindImageMemoryDeviceGroupInfoKHR}
  alignment _ = #{alignment VkBindImageMemoryDeviceGroupInfoKHR}

  peek ptr = 
    VkBindImageMemoryDeviceGroupInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"deviceIndexCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pDeviceIndices" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"splitInstanceBindRegionCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pSplitInstanceBindRegions" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"deviceIndexCount" ptr val
    pokeField @"pDeviceIndices" ptr val
    pokeField @"splitInstanceBindRegionCount" ptr val
    pokeField @"pSplitInstanceBindRegions" ptr val

instance Offset "sType" VkBindImageMemoryDeviceGroupInfoKHR where
  rawOffset = #{offset VkBindImageMemoryDeviceGroupInfoKHR, sType}

instance Offset "pNext" VkBindImageMemoryDeviceGroupInfoKHR where
  rawOffset = #{offset VkBindImageMemoryDeviceGroupInfoKHR, pNext}

instance Offset "deviceIndexCount" VkBindImageMemoryDeviceGroupInfoKHR where
  rawOffset = #{offset VkBindImageMemoryDeviceGroupInfoKHR, deviceIndexCount}

instance Offset "pDeviceIndices" VkBindImageMemoryDeviceGroupInfoKHR where
  rawOffset = #{offset VkBindImageMemoryDeviceGroupInfoKHR, pDeviceIndices}

instance Offset "splitInstanceBindRegionCount" VkBindImageMemoryDeviceGroupInfoKHR where
  rawOffset = #{offset VkBindImageMemoryDeviceGroupInfoKHR, splitInstanceBindRegionCount}

instance Offset "pSplitInstanceBindRegions" VkBindImageMemoryDeviceGroupInfoKHR where
  rawOffset = #{offset VkBindImageMemoryDeviceGroupInfoKHR, pSplitInstanceBindRegions}

#else

module Vulkan.Types.Struct.VkBindImageMemoryDeviceGroupInfoKHR where

#endif