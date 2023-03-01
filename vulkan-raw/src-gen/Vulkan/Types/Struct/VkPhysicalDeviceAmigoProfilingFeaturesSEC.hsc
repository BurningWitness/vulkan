{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_SEC_amigo_profiling

module Vulkan.Types.Struct.VkPhysicalDeviceAmigoProfilingFeaturesSEC where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceAmigoProfilingFeaturesSEC" #-} VkPhysicalDeviceAmigoProfilingFeaturesSEC =
       VkPhysicalDeviceAmigoProfilingFeaturesSEC
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , amigoProfiling :: VkBool32
         }

instance Storable VkPhysicalDeviceAmigoProfilingFeaturesSEC where
  sizeOf    _ = #{size      VkPhysicalDeviceAmigoProfilingFeaturesSEC}
  alignment _ = #{alignment VkPhysicalDeviceAmigoProfilingFeaturesSEC}

  peek ptr = 
    VkPhysicalDeviceAmigoProfilingFeaturesSEC
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"amigoProfiling" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"amigoProfiling" ptr val

instance Offset "sType" VkPhysicalDeviceAmigoProfilingFeaturesSEC where
  rawOffset = #{offset VkPhysicalDeviceAmigoProfilingFeaturesSEC, sType}

instance Offset "pNext" VkPhysicalDeviceAmigoProfilingFeaturesSEC where
  rawOffset = #{offset VkPhysicalDeviceAmigoProfilingFeaturesSEC, pNext}

instance Offset "amigoProfiling" VkPhysicalDeviceAmigoProfilingFeaturesSEC where
  rawOffset = #{offset VkPhysicalDeviceAmigoProfilingFeaturesSEC, amigoProfiling}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceAmigoProfilingFeaturesSEC where

#endif