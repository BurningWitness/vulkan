{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_QCOM_image_processing

module Vulkan.Types.Struct.VkPhysicalDeviceImageProcessingPropertiesQCOM where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkExtent2D



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceImageProcessingPropertiesQCOM" #-} VkPhysicalDeviceImageProcessingPropertiesQCOM =
       VkPhysicalDeviceImageProcessingPropertiesQCOM
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , maxWeightFilterPhases :: #{type uint32_t}
         , maxWeightFilterDimension :: VkExtent2D
         , maxBlockMatchRegion :: VkExtent2D
         , maxBoxFilterBlockSize :: VkExtent2D
         }

instance Storable VkPhysicalDeviceImageProcessingPropertiesQCOM where
  sizeOf    _ = #{size      VkPhysicalDeviceImageProcessingPropertiesQCOM}
  alignment _ = #{alignment VkPhysicalDeviceImageProcessingPropertiesQCOM}

  peek ptr = 
    VkPhysicalDeviceImageProcessingPropertiesQCOM
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxWeightFilterPhases" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxWeightFilterDimension" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxBlockMatchRegion" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxBoxFilterBlockSize" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"maxWeightFilterPhases" ptr val
    pokeField @"maxWeightFilterDimension" ptr val
    pokeField @"maxBlockMatchRegion" ptr val
    pokeField @"maxBoxFilterBlockSize" ptr val

instance Offset "sType" VkPhysicalDeviceImageProcessingPropertiesQCOM where
  rawOffset = #{offset VkPhysicalDeviceImageProcessingPropertiesQCOM, sType}

instance Offset "pNext" VkPhysicalDeviceImageProcessingPropertiesQCOM where
  rawOffset = #{offset VkPhysicalDeviceImageProcessingPropertiesQCOM, pNext}

instance Offset "maxWeightFilterPhases" VkPhysicalDeviceImageProcessingPropertiesQCOM where
  rawOffset = #{offset VkPhysicalDeviceImageProcessingPropertiesQCOM, maxWeightFilterPhases}

instance Offset "maxWeightFilterDimension" VkPhysicalDeviceImageProcessingPropertiesQCOM where
  rawOffset = #{offset VkPhysicalDeviceImageProcessingPropertiesQCOM, maxWeightFilterDimension}

instance Offset "maxBlockMatchRegion" VkPhysicalDeviceImageProcessingPropertiesQCOM where
  rawOffset = #{offset VkPhysicalDeviceImageProcessingPropertiesQCOM, maxBlockMatchRegion}

instance Offset "maxBoxFilterBlockSize" VkPhysicalDeviceImageProcessingPropertiesQCOM where
  rawOffset = #{offset VkPhysicalDeviceImageProcessingPropertiesQCOM, maxBoxFilterBlockSize}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceImageProcessingPropertiesQCOM where

#endif