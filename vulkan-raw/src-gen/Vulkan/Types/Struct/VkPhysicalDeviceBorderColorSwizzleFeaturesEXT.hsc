{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_border_color_swizzle

module Vulkan.Types.Struct.VkPhysicalDeviceBorderColorSwizzleFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceBorderColorSwizzleFeaturesEXT" #-} VkPhysicalDeviceBorderColorSwizzleFeaturesEXT =
       VkPhysicalDeviceBorderColorSwizzleFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , borderColorSwizzle :: VkBool32
         , borderColorSwizzleFromImage :: VkBool32
         }

instance Storable VkPhysicalDeviceBorderColorSwizzleFeaturesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceBorderColorSwizzleFeaturesEXT}
  alignment _ = #{alignment VkPhysicalDeviceBorderColorSwizzleFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceBorderColorSwizzleFeaturesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"borderColorSwizzle" ptr)
       <*> peek (offset @"borderColorSwizzleFromImage" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"borderColorSwizzle" ptr val
    pokeField @"borderColorSwizzleFromImage" ptr val

instance Offset "sType" VkPhysicalDeviceBorderColorSwizzleFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceBorderColorSwizzleFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceBorderColorSwizzleFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceBorderColorSwizzleFeaturesEXT, pNext}

instance Offset "borderColorSwizzle" VkPhysicalDeviceBorderColorSwizzleFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceBorderColorSwizzleFeaturesEXT, borderColorSwizzle}

instance Offset "borderColorSwizzleFromImage" VkPhysicalDeviceBorderColorSwizzleFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceBorderColorSwizzleFeaturesEXT, borderColorSwizzleFromImage}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceBorderColorSwizzleFeaturesEXT where

#endif