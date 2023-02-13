{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Struct.VkPhysicalDeviceScalarBlockLayoutFeatures where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceScalarBlockLayoutFeatures" #-} VkPhysicalDeviceScalarBlockLayoutFeatures =
       VkPhysicalDeviceScalarBlockLayoutFeatures
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , scalarBlockLayout :: VkBool32
         }

instance Storable VkPhysicalDeviceScalarBlockLayoutFeatures where
  sizeOf    _ = #{size      VkPhysicalDeviceScalarBlockLayoutFeatures}
  alignment _ = #{alignment VkPhysicalDeviceScalarBlockLayoutFeatures}

  peek ptr = 
    VkPhysicalDeviceScalarBlockLayoutFeatures
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"scalarBlockLayout" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"scalarBlockLayout" ptr val

instance Offset "sType" VkPhysicalDeviceScalarBlockLayoutFeatures where
  rawOffset = #{offset VkPhysicalDeviceScalarBlockLayoutFeatures, sType}

instance Offset "pNext" VkPhysicalDeviceScalarBlockLayoutFeatures where
  rawOffset = #{offset VkPhysicalDeviceScalarBlockLayoutFeatures, pNext}

instance Offset "scalarBlockLayout" VkPhysicalDeviceScalarBlockLayoutFeatures where
  rawOffset = #{offset VkPhysicalDeviceScalarBlockLayoutFeatures, scalarBlockLayout}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceScalarBlockLayoutFeatures where

#endif