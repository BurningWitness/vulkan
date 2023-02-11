{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_depth_clip_control

module Vulkan.Types.Struct.VkPhysicalDeviceDepthClipControlFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceDepthClipControlFeaturesEXT" #-} VkPhysicalDeviceDepthClipControlFeaturesEXT =
       VkPhysicalDeviceDepthClipControlFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , depthClipControl :: VkBool32
         }

instance Storable VkPhysicalDeviceDepthClipControlFeaturesEXT where
  sizeOf    _ = #{size      struct VkPhysicalDeviceDepthClipControlFeaturesEXT}
  alignment _ = #{alignment struct VkPhysicalDeviceDepthClipControlFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceDepthClipControlFeaturesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"depthClipControl" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"depthClipControl" ptr val

instance Offset "sType" VkPhysicalDeviceDepthClipControlFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceDepthClipControlFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceDepthClipControlFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceDepthClipControlFeaturesEXT, pNext}

instance Offset "depthClipControl" VkPhysicalDeviceDepthClipControlFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceDepthClipControlFeaturesEXT, depthClipControl}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceDepthClipControlFeaturesEXT where

#endif