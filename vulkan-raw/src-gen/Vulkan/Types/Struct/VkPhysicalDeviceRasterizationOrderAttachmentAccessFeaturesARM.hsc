{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_ARM_rasterization_order_attachment_access

module Vulkan.Types.Struct.VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesARM where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesARM" #-} VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesARM =
       VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesARM
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , rasterizationOrderColorAttachmentAccess :: VkBool32
         , rasterizationOrderDepthAttachmentAccess :: VkBool32
         , rasterizationOrderStencilAttachmentAccess :: VkBool32
         }

instance Storable VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesARM where
  sizeOf    _ = #{size      VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesARM}
  alignment _ = #{alignment VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesARM}

  peek ptr = 
    VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesARM
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"rasterizationOrderColorAttachmentAccess" ptr)
       <*> peek (offset @"rasterizationOrderDepthAttachmentAccess" ptr)
       <*> peek (offset @"rasterizationOrderStencilAttachmentAccess" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"rasterizationOrderColorAttachmentAccess" ptr val
    pokeField @"rasterizationOrderDepthAttachmentAccess" ptr val
    pokeField @"rasterizationOrderStencilAttachmentAccess" ptr val

instance Offset "sType" VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesARM where
  rawOffset = #{offset VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesARM, sType}

instance Offset "pNext" VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesARM where
  rawOffset = #{offset VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesARM, pNext}

instance Offset "rasterizationOrderColorAttachmentAccess" VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesARM where
  rawOffset = #{offset VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesARM, rasterizationOrderColorAttachmentAccess}

instance Offset "rasterizationOrderDepthAttachmentAccess" VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesARM where
  rawOffset = #{offset VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesARM, rasterizationOrderDepthAttachmentAccess}

instance Offset "rasterizationOrderStencilAttachmentAccess" VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesARM where
  rawOffset = #{offset VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesARM, rasterizationOrderStencilAttachmentAccess}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesARM where

#endif