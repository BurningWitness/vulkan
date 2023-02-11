{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_depth_clamp_zero_one

module Vulkan.Types.Struct.VkPhysicalDeviceDepthClampZeroOneFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceDepthClampZeroOneFeaturesEXT" #-} VkPhysicalDeviceDepthClampZeroOneFeaturesEXT =
       VkPhysicalDeviceDepthClampZeroOneFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , depthClampZeroOne :: VkBool32
         }

instance Storable VkPhysicalDeviceDepthClampZeroOneFeaturesEXT where
  sizeOf    _ = #{size      struct VkPhysicalDeviceDepthClampZeroOneFeaturesEXT}
  alignment _ = #{alignment struct VkPhysicalDeviceDepthClampZeroOneFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceDepthClampZeroOneFeaturesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"depthClampZeroOne" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"depthClampZeroOne" ptr val

instance Offset "sType" VkPhysicalDeviceDepthClampZeroOneFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceDepthClampZeroOneFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceDepthClampZeroOneFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceDepthClampZeroOneFeaturesEXT, pNext}

instance Offset "depthClampZeroOne" VkPhysicalDeviceDepthClampZeroOneFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceDepthClampZeroOneFeaturesEXT, depthClampZeroOne}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceDepthClampZeroOneFeaturesEXT where

#endif