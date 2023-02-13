{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_robustness2

module Vulkan.Types.Struct.VkPhysicalDeviceRobustness2FeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceRobustness2FeaturesEXT" #-} VkPhysicalDeviceRobustness2FeaturesEXT =
       VkPhysicalDeviceRobustness2FeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , robustBufferAccess2 :: VkBool32
         , robustImageAccess2 :: VkBool32
         , nullDescriptor :: VkBool32
         }

instance Storable VkPhysicalDeviceRobustness2FeaturesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceRobustness2FeaturesEXT}
  alignment _ = #{alignment VkPhysicalDeviceRobustness2FeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceRobustness2FeaturesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"robustBufferAccess2" ptr)
       <*> peek (offset @"robustImageAccess2" ptr)
       <*> peek (offset @"nullDescriptor" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"robustBufferAccess2" ptr val
    pokeField @"robustImageAccess2" ptr val
    pokeField @"nullDescriptor" ptr val

instance Offset "sType" VkPhysicalDeviceRobustness2FeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceRobustness2FeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceRobustness2FeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceRobustness2FeaturesEXT, pNext}

instance Offset "robustBufferAccess2" VkPhysicalDeviceRobustness2FeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceRobustness2FeaturesEXT, robustBufferAccess2}

instance Offset "robustImageAccess2" VkPhysicalDeviceRobustness2FeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceRobustness2FeaturesEXT, robustImageAccess2}

instance Offset "nullDescriptor" VkPhysicalDeviceRobustness2FeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceRobustness2FeaturesEXT, nullDescriptor}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceRobustness2FeaturesEXT where

#endif