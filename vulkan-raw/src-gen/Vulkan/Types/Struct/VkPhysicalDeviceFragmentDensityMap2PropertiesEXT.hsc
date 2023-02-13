{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_fragment_density_map2

module Vulkan.Types.Struct.VkPhysicalDeviceFragmentDensityMap2PropertiesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceFragmentDensityMap2PropertiesEXT" #-} VkPhysicalDeviceFragmentDensityMap2PropertiesEXT =
       VkPhysicalDeviceFragmentDensityMap2PropertiesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , subsampledLoads :: VkBool32
         , subsampledCoarseReconstructionEarlyAccess :: VkBool32
         , maxSubsampledArrayLayers :: #{type uint32_t}
         , maxDescriptorSetSubsampledSamplers :: #{type uint32_t}
         }

instance Storable VkPhysicalDeviceFragmentDensityMap2PropertiesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceFragmentDensityMap2PropertiesEXT}
  alignment _ = #{alignment VkPhysicalDeviceFragmentDensityMap2PropertiesEXT}

  peek ptr = 
    VkPhysicalDeviceFragmentDensityMap2PropertiesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"subsampledLoads" ptr)
       <*> peek (offset @"subsampledCoarseReconstructionEarlyAccess" ptr)
       <*> peek (offset @"maxSubsampledArrayLayers" ptr)
       <*> peek (offset @"maxDescriptorSetSubsampledSamplers" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"subsampledLoads" ptr val
    pokeField @"subsampledCoarseReconstructionEarlyAccess" ptr val
    pokeField @"maxSubsampledArrayLayers" ptr val
    pokeField @"maxDescriptorSetSubsampledSamplers" ptr val

instance Offset "sType" VkPhysicalDeviceFragmentDensityMap2PropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceFragmentDensityMap2PropertiesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceFragmentDensityMap2PropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceFragmentDensityMap2PropertiesEXT, pNext}

instance Offset "subsampledLoads" VkPhysicalDeviceFragmentDensityMap2PropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceFragmentDensityMap2PropertiesEXT, subsampledLoads}

instance Offset "subsampledCoarseReconstructionEarlyAccess" VkPhysicalDeviceFragmentDensityMap2PropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceFragmentDensityMap2PropertiesEXT, subsampledCoarseReconstructionEarlyAccess}

instance Offset "maxSubsampledArrayLayers" VkPhysicalDeviceFragmentDensityMap2PropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceFragmentDensityMap2PropertiesEXT, maxSubsampledArrayLayers}

instance Offset "maxDescriptorSetSubsampledSamplers" VkPhysicalDeviceFragmentDensityMap2PropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceFragmentDensityMap2PropertiesEXT, maxDescriptorSetSubsampledSamplers}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceFragmentDensityMap2PropertiesEXT where

#endif