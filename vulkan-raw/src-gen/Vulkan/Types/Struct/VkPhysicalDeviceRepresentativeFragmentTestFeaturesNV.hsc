{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_representative_fragment_test

module Vulkan.Types.Struct.VkPhysicalDeviceRepresentativeFragmentTestFeaturesNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceRepresentativeFragmentTestFeaturesNV" #-} VkPhysicalDeviceRepresentativeFragmentTestFeaturesNV =
       VkPhysicalDeviceRepresentativeFragmentTestFeaturesNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , representativeFragmentTest :: VkBool32
         }

instance Storable VkPhysicalDeviceRepresentativeFragmentTestFeaturesNV where
  sizeOf    _ = #{size      VkPhysicalDeviceRepresentativeFragmentTestFeaturesNV}
  alignment _ = #{alignment VkPhysicalDeviceRepresentativeFragmentTestFeaturesNV}

  peek ptr = 
    VkPhysicalDeviceRepresentativeFragmentTestFeaturesNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"representativeFragmentTest" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"representativeFragmentTest" ptr val

instance Offset "sType" VkPhysicalDeviceRepresentativeFragmentTestFeaturesNV where
  rawOffset = #{offset VkPhysicalDeviceRepresentativeFragmentTestFeaturesNV, sType}

instance Offset "pNext" VkPhysicalDeviceRepresentativeFragmentTestFeaturesNV where
  rawOffset = #{offset VkPhysicalDeviceRepresentativeFragmentTestFeaturesNV, pNext}

instance Offset "representativeFragmentTest" VkPhysicalDeviceRepresentativeFragmentTestFeaturesNV where
  rawOffset = #{offset VkPhysicalDeviceRepresentativeFragmentTestFeaturesNV, representativeFragmentTest}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceRepresentativeFragmentTestFeaturesNV where

#endif