{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkPipelineMultisampleStateCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkPipelineMultisampleStateCreateFlags
import Vulkan.Types.Enum.VkSampleCountFlagBits
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineMultisampleStateCreateInfo" #-} VkPipelineMultisampleStateCreateInfo =
       VkPipelineMultisampleStateCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkPipelineMultisampleStateCreateFlags
         , rasterizationSamples :: VkSampleCountFlagBits -- ^ Number of samples used for rasterization
         , sampleShadingEnable :: VkBool32 -- ^ optional (GL45)
         , minSampleShading :: #{type float} -- ^ optional (GL45)
         , pSampleMask :: Ptr VkSampleMask -- ^ Array of sampleMask words
         , alphaToCoverageEnable :: VkBool32
         , alphaToOneEnable :: VkBool32
         }

instance Storable VkPipelineMultisampleStateCreateInfo where
  sizeOf    _ = #{size      struct VkPipelineMultisampleStateCreateInfo}
  alignment _ = #{alignment struct VkPipelineMultisampleStateCreateInfo}

  peek ptr = 
    VkPipelineMultisampleStateCreateInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"rasterizationSamples" ptr)
       <*> peek (offset @"sampleShadingEnable" ptr)
       <*> peek (offset @"minSampleShading" ptr)
       <*> peek (offset @"pSampleMask" ptr)
       <*> peek (offset @"alphaToCoverageEnable" ptr)
       <*> peek (offset @"alphaToOneEnable" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"rasterizationSamples" ptr val
    pokeField @"sampleShadingEnable" ptr val
    pokeField @"minSampleShading" ptr val
    pokeField @"pSampleMask" ptr val
    pokeField @"alphaToCoverageEnable" ptr val
    pokeField @"alphaToOneEnable" ptr val

instance Offset "sType" VkPipelineMultisampleStateCreateInfo where
  rawOffset = #{offset struct VkPipelineMultisampleStateCreateInfo, sType}

instance Offset "pNext" VkPipelineMultisampleStateCreateInfo where
  rawOffset = #{offset struct VkPipelineMultisampleStateCreateInfo, pNext}

instance Offset "flags" VkPipelineMultisampleStateCreateInfo where
  rawOffset = #{offset struct VkPipelineMultisampleStateCreateInfo, flags}

instance Offset "rasterizationSamples" VkPipelineMultisampleStateCreateInfo where
  rawOffset = #{offset struct VkPipelineMultisampleStateCreateInfo, rasterizationSamples}

instance Offset "sampleShadingEnable" VkPipelineMultisampleStateCreateInfo where
  rawOffset = #{offset struct VkPipelineMultisampleStateCreateInfo, sampleShadingEnable}

instance Offset "minSampleShading" VkPipelineMultisampleStateCreateInfo where
  rawOffset = #{offset struct VkPipelineMultisampleStateCreateInfo, minSampleShading}

instance Offset "pSampleMask" VkPipelineMultisampleStateCreateInfo where
  rawOffset = #{offset struct VkPipelineMultisampleStateCreateInfo, pSampleMask}

instance Offset "alphaToCoverageEnable" VkPipelineMultisampleStateCreateInfo where
  rawOffset = #{offset struct VkPipelineMultisampleStateCreateInfo, alphaToCoverageEnable}

instance Offset "alphaToOneEnable" VkPipelineMultisampleStateCreateInfo where
  rawOffset = #{offset struct VkPipelineMultisampleStateCreateInfo, alphaToOneEnable}