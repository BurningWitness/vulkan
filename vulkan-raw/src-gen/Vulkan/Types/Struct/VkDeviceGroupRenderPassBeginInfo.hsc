{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkDeviceGroupRenderPassBeginInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkRect2D



data {-# CTYPE "vulkan/vulkan.h" "VkDeviceGroupRenderPassBeginInfo" #-} VkDeviceGroupRenderPassBeginInfo =
       VkDeviceGroupRenderPassBeginInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , deviceMask :: #{type uint32_t}
         , deviceRenderAreaCount :: #{type uint32_t}
         , pDeviceRenderAreas :: Ptr VkRect2D
         }

instance Storable VkDeviceGroupRenderPassBeginInfo where
  sizeOf    _ = #{size      VkDeviceGroupRenderPassBeginInfo}
  alignment _ = #{alignment VkDeviceGroupRenderPassBeginInfo}

  peek ptr = 
    VkDeviceGroupRenderPassBeginInfo
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"deviceMask" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"deviceRenderAreaCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pDeviceRenderAreas" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"deviceMask" ptr val
    pokeField @"deviceRenderAreaCount" ptr val
    pokeField @"pDeviceRenderAreas" ptr val

instance Offset "sType" VkDeviceGroupRenderPassBeginInfo where
  rawOffset = #{offset VkDeviceGroupRenderPassBeginInfo, sType}

instance Offset "pNext" VkDeviceGroupRenderPassBeginInfo where
  rawOffset = #{offset VkDeviceGroupRenderPassBeginInfo, pNext}

instance Offset "deviceMask" VkDeviceGroupRenderPassBeginInfo where
  rawOffset = #{offset VkDeviceGroupRenderPassBeginInfo, deviceMask}

instance Offset "deviceRenderAreaCount" VkDeviceGroupRenderPassBeginInfo where
  rawOffset = #{offset VkDeviceGroupRenderPassBeginInfo, deviceRenderAreaCount}

instance Offset "pDeviceRenderAreas" VkDeviceGroupRenderPassBeginInfo where
  rawOffset = #{offset VkDeviceGroupRenderPassBeginInfo, pDeviceRenderAreas}

#else

module Vulkan.Types.Struct.VkDeviceGroupRenderPassBeginInfo where

#endif