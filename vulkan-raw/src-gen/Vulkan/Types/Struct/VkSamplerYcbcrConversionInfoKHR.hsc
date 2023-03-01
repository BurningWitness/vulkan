{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_sampler_ycbcr_conversion

module Vulkan.Types.Struct.VkSamplerYcbcrConversionInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkSamplerYcbcrConversionInfoKHR" #-} VkSamplerYcbcrConversionInfoKHR =
       VkSamplerYcbcrConversionInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , conversion :: VkSamplerYcbcrConversion
         }

instance Storable VkSamplerYcbcrConversionInfoKHR where
  sizeOf    _ = #{size      VkSamplerYcbcrConversionInfoKHR}
  alignment _ = #{alignment VkSamplerYcbcrConversionInfoKHR}

  peek ptr = 
    VkSamplerYcbcrConversionInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"conversion" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"conversion" ptr val

instance Offset "sType" VkSamplerYcbcrConversionInfoKHR where
  rawOffset = #{offset VkSamplerYcbcrConversionInfoKHR, sType}

instance Offset "pNext" VkSamplerYcbcrConversionInfoKHR where
  rawOffset = #{offset VkSamplerYcbcrConversionInfoKHR, pNext}

instance Offset "conversion" VkSamplerYcbcrConversionInfoKHR where
  rawOffset = #{offset VkSamplerYcbcrConversionInfoKHR, conversion}

#else

module Vulkan.Types.Struct.VkSamplerYcbcrConversionInfoKHR where

#endif