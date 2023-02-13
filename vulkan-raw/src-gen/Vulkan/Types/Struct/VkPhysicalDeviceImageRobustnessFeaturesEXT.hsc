{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_image_robustness

module Vulkan.Types.Struct.VkPhysicalDeviceImageRobustnessFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceImageRobustnessFeaturesEXT" #-} VkPhysicalDeviceImageRobustnessFeaturesEXT =
       VkPhysicalDeviceImageRobustnessFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , robustImageAccess :: VkBool32
         }

instance Storable VkPhysicalDeviceImageRobustnessFeaturesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceImageRobustnessFeaturesEXT}
  alignment _ = #{alignment VkPhysicalDeviceImageRobustnessFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceImageRobustnessFeaturesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"robustImageAccess" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"robustImageAccess" ptr val

instance Offset "sType" VkPhysicalDeviceImageRobustnessFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceImageRobustnessFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceImageRobustnessFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceImageRobustnessFeaturesEXT, pNext}

instance Offset "robustImageAccess" VkPhysicalDeviceImageRobustnessFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceImageRobustnessFeaturesEXT, robustImageAccess}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceImageRobustnessFeaturesEXT where

#endif