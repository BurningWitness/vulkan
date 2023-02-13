{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state2

module Vulkan.Types.Struct.VkPhysicalDeviceExtendedDynamicState2FeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceExtendedDynamicState2FeaturesEXT" #-} VkPhysicalDeviceExtendedDynamicState2FeaturesEXT =
       VkPhysicalDeviceExtendedDynamicState2FeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , extendedDynamicState2 :: VkBool32
         , extendedDynamicState2LogicOp :: VkBool32
         , extendedDynamicState2PatchControlPoints :: VkBool32
         }

instance Storable VkPhysicalDeviceExtendedDynamicState2FeaturesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceExtendedDynamicState2FeaturesEXT}
  alignment _ = #{alignment VkPhysicalDeviceExtendedDynamicState2FeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceExtendedDynamicState2FeaturesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"extendedDynamicState2" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"extendedDynamicState2LogicOp" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"extendedDynamicState2PatchControlPoints" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"extendedDynamicState2" ptr val
    pokeField @"extendedDynamicState2LogicOp" ptr val
    pokeField @"extendedDynamicState2PatchControlPoints" ptr val

instance Offset "sType" VkPhysicalDeviceExtendedDynamicState2FeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceExtendedDynamicState2FeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceExtendedDynamicState2FeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceExtendedDynamicState2FeaturesEXT, pNext}

instance Offset "extendedDynamicState2" VkPhysicalDeviceExtendedDynamicState2FeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceExtendedDynamicState2FeaturesEXT, extendedDynamicState2}

instance Offset "extendedDynamicState2LogicOp" VkPhysicalDeviceExtendedDynamicState2FeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceExtendedDynamicState2FeaturesEXT, extendedDynamicState2LogicOp}

instance Offset "extendedDynamicState2PatchControlPoints" VkPhysicalDeviceExtendedDynamicState2FeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceExtendedDynamicState2FeaturesEXT, extendedDynamicState2PatchControlPoints}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceExtendedDynamicState2FeaturesEXT where

#endif