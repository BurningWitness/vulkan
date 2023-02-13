{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkBindImageMemoryDeviceGroupInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkRect2D



data {-# CTYPE "vulkan/vulkan.h" "VkBindImageMemoryDeviceGroupInfo" #-} VkBindImageMemoryDeviceGroupInfo =
       VkBindImageMemoryDeviceGroupInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , deviceIndexCount :: #{type uint32_t}
         , pDeviceIndices :: Ptr #{type uint32_t}
         , splitInstanceBindRegionCount :: #{type uint32_t}
         , pSplitInstanceBindRegions :: Ptr VkRect2D
         }

instance Storable VkBindImageMemoryDeviceGroupInfo where
  sizeOf    _ = #{size      VkBindImageMemoryDeviceGroupInfo}
  alignment _ = #{alignment VkBindImageMemoryDeviceGroupInfo}

  peek ptr = 
    VkBindImageMemoryDeviceGroupInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"deviceIndexCount" ptr)
       <*> peek (offset @"pDeviceIndices" ptr)
       <*> peek (offset @"splitInstanceBindRegionCount" ptr)
       <*> peek (offset @"pSplitInstanceBindRegions" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"deviceIndexCount" ptr val
    pokeField @"pDeviceIndices" ptr val
    pokeField @"splitInstanceBindRegionCount" ptr val
    pokeField @"pSplitInstanceBindRegions" ptr val

instance Offset "sType" VkBindImageMemoryDeviceGroupInfo where
  rawOffset = #{offset VkBindImageMemoryDeviceGroupInfo, sType}

instance Offset "pNext" VkBindImageMemoryDeviceGroupInfo where
  rawOffset = #{offset VkBindImageMemoryDeviceGroupInfo, pNext}

instance Offset "deviceIndexCount" VkBindImageMemoryDeviceGroupInfo where
  rawOffset = #{offset VkBindImageMemoryDeviceGroupInfo, deviceIndexCount}

instance Offset "pDeviceIndices" VkBindImageMemoryDeviceGroupInfo where
  rawOffset = #{offset VkBindImageMemoryDeviceGroupInfo, pDeviceIndices}

instance Offset "splitInstanceBindRegionCount" VkBindImageMemoryDeviceGroupInfo where
  rawOffset = #{offset VkBindImageMemoryDeviceGroupInfo, splitInstanceBindRegionCount}

instance Offset "pSplitInstanceBindRegions" VkBindImageMemoryDeviceGroupInfo where
  rawOffset = #{offset VkBindImageMemoryDeviceGroupInfo, pSplitInstanceBindRegions}

#else

module Vulkan.Types.Struct.VkBindImageMemoryDeviceGroupInfo where

#endif