{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_conservative_rasterization

module Vulkan.Types.Struct.VkPipelineRasterizationConservativeStateCreateInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkConservativeRasterizationModeEXT
import Vulkan.Types.Enum.VkPipelineRasterizationConservativeStateCreateFlagsEXT
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineRasterizationConservativeStateCreateInfoEXT" #-} VkPipelineRasterizationConservativeStateCreateInfoEXT =
       VkPipelineRasterizationConservativeStateCreateInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkPipelineRasterizationConservativeStateCreateFlagsEXT -- ^ Reserved
         , conservativeRasterizationMode :: VkConservativeRasterizationModeEXT -- ^ Conservative rasterization mode
         , extraPrimitiveOverestimationSize :: #{type float} -- ^ Extra overestimation to add to the primitive
         }

instance Storable VkPipelineRasterizationConservativeStateCreateInfoEXT where
  sizeOf    _ = #{size      VkPipelineRasterizationConservativeStateCreateInfoEXT}
  alignment _ = #{alignment VkPipelineRasterizationConservativeStateCreateInfoEXT}

  peek ptr = 
    VkPipelineRasterizationConservativeStateCreateInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"conservativeRasterizationMode" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"extraPrimitiveOverestimationSize" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"conservativeRasterizationMode" ptr val
    pokeField @"extraPrimitiveOverestimationSize" ptr val

instance Offset "sType" VkPipelineRasterizationConservativeStateCreateInfoEXT where
  rawOffset = #{offset VkPipelineRasterizationConservativeStateCreateInfoEXT, sType}

instance Offset "pNext" VkPipelineRasterizationConservativeStateCreateInfoEXT where
  rawOffset = #{offset VkPipelineRasterizationConservativeStateCreateInfoEXT, pNext}

instance Offset "flags" VkPipelineRasterizationConservativeStateCreateInfoEXT where
  rawOffset = #{offset VkPipelineRasterizationConservativeStateCreateInfoEXT, flags}

instance Offset "conservativeRasterizationMode" VkPipelineRasterizationConservativeStateCreateInfoEXT where
  rawOffset = #{offset VkPipelineRasterizationConservativeStateCreateInfoEXT, conservativeRasterizationMode}

instance Offset "extraPrimitiveOverestimationSize" VkPipelineRasterizationConservativeStateCreateInfoEXT where
  rawOffset = #{offset VkPipelineRasterizationConservativeStateCreateInfoEXT, extraPrimitiveOverestimationSize}

#else

module Vulkan.Types.Struct.VkPipelineRasterizationConservativeStateCreateInfoEXT where

#endif